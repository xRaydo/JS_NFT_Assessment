/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console 
   (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

// create a variable to hold your NFT's
const NFTs = []

// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.
function mintNFT (_name, _eyeColor, _shirtType, _bling) {
    const NFT = {
        "name": _name,
        "eyeColor": _eyeColor,
        "shirtType": _shirtType,
        "bling": _bling
    }
    NFTs.push(NFT);
    console.log("Minted: " + _name); 
}

// create a "loop" that will go through an "array" of NFT's
// and print their metadata with console.log()
function listNFTs () {
    for(let i = 0; i < NFTs.length; i++) {
        console.log("\nID: \t\t" + (i + 1));
        console.log("Name: \t\t" + NFTs[i].name);
        console.log("Eye Color: \t" + NFTs[i].eyeColor);
        console.log("Shirt Type: " + NFTs[i].shirtType);
        console.log("Bling: \t\t" + NFTs[i].bling);
    }    
}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
    console.log("\nTotal: \t" + NFTs.length);
}

// call your functions below this line
mintNFT("Raydo", "Black", "Croptop", "Necklace");
mintNFT("Rayshii", "Black", "Hoodie", "Anklet");
mintNFT("Ray-ray", "Brown", "Hoodie", "Bracelet");
mintNFT("Pedro", "Green", "Sleeveless", "Necklace");
mintNFT("Lamont", "Brown", "Hoodie", "Watch");
mintNFT("Mercs", "Brown", "Hoodie", "Ring");
listNFTs();
getTotalSupply();