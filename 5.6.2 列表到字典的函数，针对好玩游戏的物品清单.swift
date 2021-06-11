/*
 5.6.2 列表到字典的函数，针对好玩游戏的物品清单假设征服一条龙的战利品表示为这样的字符串列表：
 dragonLoot = ["gold coin", "dagger", "gold coin", "gold coin", "ruby"]
 写一个名为addToInventory(inventory,addedItems)的函数，
 其中inventory参数是一个字典，表示玩家的物品清单（像前面项目一样），
 addedItems参数是一个列表，就像dragonLoot。
 addToInventory()函数应该返回一个字典，表示更新过的物品清单。
 请注意，列表可以包含多个同样的项。你的代码看起来可能像这样：
 def addToInventory(inventory, addedItems):
 # your code goes here
 inv = ["gold coin": 42, "rope": 1]
 dragonLoot = ["gold coin", "dagger", "gold coin", "gold coin", "ruby"]
 inv = addToInventory(inv, dragonLoot)
 displayInventory(inv)
 前面的程序（加上前一个项目中的displayInventory()函数）将输出如下：
 Inventory:
 45 gold coin
 1 rope
 1 ruby
 1 dagger
 
 Total number of items: 48
 */


func addToInventory(inventory: [String: Int], addedItems: [String]) -> [String: Int] {
    var inventory = inventory
    for addItem in addedItems {
        if inventory[addItem] == nil {
            inventory[addItem] = 1
        } else {
            inventory[addItem] =  inventory[addItem]! + 1
        }
    }
    return inventory
}


let dragonLoot = ["gold coin", "dagger", "gold coin", "gold coin", "ruby"]
var inv = ["gold coin": 42, "rope": 1]
inv = addToInventory(inventory: inv, addedItems: dragonLoot)
displayInventory(stuff: inv)
