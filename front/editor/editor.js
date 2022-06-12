isAuth = false;
const init = () => {
  let localStorageUserString = localStorage.getItem("loginUserInformation");
  let localStorageUserParsed = JSON.parse(localStorageUserString);

  if (!localStorageUserParsed) {
    isAuth = false;
    window.alert("Du är inte inloggad");
    window.location.href = "../login/login.html";
  } else {
    isAuth = true;
  }

  tinymce.init({
    selector: "#textarea",
    height: 500,
    width: 600,
    toolbar:
      "undo redo | forecolor backcolor | styles bold italic | alignleft aligncenter alignright | code ",

    setup: (editor) => {
      editor.on("change", () => {
        editor.save();
      });
    },
  });
  let saveBtn = document.getElementById("saveBtn");

  saveBtn.addEventListener("click", async () => {
    console.log("click");
    let localStorageUserString = localStorage.getItem("loginUserInformation");
    let localStorageUserParsed = JSON.parse(localStorageUserString);

    if (!localStorageUserParsed) {
      isAuth = false;
      window.alert("Du är inte inloggad");
      window.location.href = "../login/login.html";
    } else {
      isAuth = true;
    }

    let headerInput = document.getElementById("headerInput").value;
    let textarea = document.getElementById("textarea").value;
    let errorMessageContainer = document.getElementById(
      "errorMessageContainer"
    );
    let errorMessage = document.createElement("p");
    errorMessage.innerText = "Du måste fylla i en Titel!";
    errorMessage.style.color = "red";

    console.log("headerInput", headerInput);
    console.log("textarea", textarea);

    if (headerInput == "") {
      return errorMessageContainer.append(errorMessage);
      // return window.alert("Titeln är tom");
    }
    let doc = {
      header: headerInput,
      textContent: textarea,
      lastChanged: new Date().toLocaleString(),
    };
    console.log(doc);

    await fetch("http://localhost:3000/savedoc", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(doc),
    })
      .then((response) => response.json())
      .then((result) => console.log(result));

    window.alert("Det nya dokumentet skapades och sparades");
    window.location.href = "../index.html";
  });
};

init();
