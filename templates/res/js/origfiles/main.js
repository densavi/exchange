// Начало скрипта для работы табов
class tabsCrypto {
    constructor(boxBtn, options){
        this.containerBtn = document.getElementById(`${boxBtn}`)
        this.options = options;
        this._render(options)
    }
    _render(options){
        this.containerBtn.addEventListener('click',(e)=> {
            let tabsButton = e.target
            this._tabsRender(tabsButton, options)
        })
    }
    _tabsRender(tabsButton, options){
        if (tabsButton.closest('.rushButton')){
            for (let i=0; i < options.tabs.length; i++){
                let btnActive= document.getElementById(`${options.tabs[i].btn}`)
                let itemActive= document.getElementById(`${options.tabs[i].item}`)
                btnActive.classList.remove(`${this._buttonActive()}`)
                itemActive.classList.remove(`${this._itemActive()}`)
                document.querySelector('.deposit__coin-list-box').classList.remove('active')
                tabsButton.classList.add(`${this._buttonActive()}`)
                if(tabsButton.id == btnActive.id){
                    itemActive.classList.add(`${this._itemActive()}`)
                }
            }
        }
    }
    _buttonActive(){
        if (this.options.buttonActive === undefined){
            return 'rushButton-active'
        } else {
            return `${this.options.buttonActive}`
        }
    }
    _itemActive(){
        if (this.options.itemActive === undefined){
            return 'rushItem-active'
        } else {
            return `${this.options.itemActive}`
        }
    }
}

// Конец скрипта для работы табов

// Начало скрипта для работы popup
const depositMobileBtn = document.querySelector('.deposit__mobile-btn')
const depositCoinListBox = document.querySelector('.deposit__coin-list-box')
const depositCloseList = document.querySelector('.deposit__close-list')

window.addEventListener('click', elem => {
    if (!elem.target.classList.contains('deposit__coin-list-wrapper') && !elem.target.classList.contains('deposit__mobile-btn')){
        depositCoinListBox.classList.remove('active')
        // for lock scroll
        document.body.classList.remove('lock')
        // for lock scroll
    }
})

depositMobileBtn.addEventListener('click' , () => {
    depositCoinListBox.classList.add('active')
    // for lock scroll
    document.body.classList.add('lock')
    // for lock scroll
})
depositCloseList.addEventListener('click' , () => {
    depositCoinListBox.classList.remove('active')
    // for lock scroll
    document.body.classList.remove('lock')
    // for lock scroll
})

// Конец скрипта для работы popup

