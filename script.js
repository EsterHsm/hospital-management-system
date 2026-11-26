
let currentLang = localStorage.getItem("lang") || "en";

function translatePage(lang) {
    const elements = document.querySelectorAll("[data-en]");

    elements.forEach(el => {
        el.textContent = el.getAttribute(`data-${lang}`);
    });

    
    const langBtn = document.getElementById("lang-btn");
    const langFlag = document.getElementById("lang-flag");

    if (lang === "es") {
        langBtn.textContent = "English";
        langFlag.src = "images/english.png"; 
        localStorage.setItem("lang", "es");
    } else {
        langBtn.textContent = "Español";
        langFlag.src = "images/spanish.png"; 
        localStorage.setItem("lang", "en");
    }

    currentLang = lang;
}

document.addEventListener("DOMContentLoaded", () => {
    if (currentLang === "es") {
        translatePage("es");
    }
});

let user = localStorage.getItem("currentUser");

if (user) {
    // hide login icon
    document.getElementById("login-item").style.display = "none";

    // show user dropdown
    document.getElementById("user-item").style.display = "inline-block";

    // set username
    document.getElementById("user-name").innerText = "👤 " + user;
}

// logout function
document.getElementById("logout-btn").addEventListener("click", function(e) {
    e.preventDefault();

    localStorage.removeItem("currentUser");
    location.reload();
});

document.addEventListener("DOMContentLoaded", () => {

    /* ===================== LOAD REVIEWS ===================== */
    async function loadReviews() {
        try {
            const res = await fetch("http://localhost:3000/reviews");
            const reviews = await res.json();

            const container = document.getElementById("reviewsContainer");
            container.innerHTML = "";

            reviews.forEach(r => {
                container.innerHTML += `
                    <div class="review">
                        <h4>${r.name}</h4>
                        <p>${"⭐".repeat(r.rating)}</p>
                        <p>${r.comment}</p>
                    </div>
                `;
            });

        } catch (err) {
            console.log("Error loading reviews:", err);
        }
    }

    /* ===================== SUBMIT REVIEW ===================== */
    const form = document.getElementById("reviewForm");

    form.addEventListener("submit", async (e) => {
        e.preventDefault();

        const name = document.getElementById("name").value;
        const rating = document.getElementById("rating").value;
        const comment = document.getElementById("comment").value;

        try {
            const response = await fetch("http://localhost:3000/reviews", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify({ name, rating, comment })
            });

            const data = await response.json();
            alert(data.message);

            form.reset();
            loadReviews();

        } catch (err) {
            console.log("Error sending review:", err);
            alert("Server error");
        }
    });

    /* ===================== INIT ===================== */
    loadReviews();
});
