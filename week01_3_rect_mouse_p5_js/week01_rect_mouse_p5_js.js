function setup() 
{
    initializeFields();
    createCanvas(500, 500);
}
function draw() 
{
    background(color(0xA0, 0x00, 0x28));
    fill(color(0xFC, 0x95, 0x2E));
    rect(100, 100, 100, 150);
    rect(mouseX, mouseY, 100, 150);
}
function initializeFields() 
{
}
