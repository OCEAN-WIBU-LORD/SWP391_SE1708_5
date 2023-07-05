/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Cuthi
 */
public class Paging {
    private int currentPage;
    private int tottalPage;
    private int totalItems;
    private int startItem;
    private int endItem;
    private int nextPage;
    private int prePage;
    private int itemPerPage;

    public Paging() {
    }

    public Paging(int currentPage, int totalItems, int itemPerPage) {
        this.currentPage = currentPage;
        this.totalItems = totalItems;
        this.itemPerPage = itemPerPage;
        this.tottalPage = this.totalItems / this.itemPerPage;
        this.tottalPage = (this.totalItems%this.itemPerPage==0)? 
                this.tottalPage : (this.tottalPage+1);
        if (this.currentPage <1){
            this.currentPage = 1;
        } else if (this.currentPage > this.tottalPage){
            this.currentPage = this.tottalPage;
        }
        this.prePage = this.currentPage-1;
        this.nextPage = this.currentPage+1;
        this.nextPage = (this.nextPage > this.tottalPage) ? 0 : this.nextPage;
        this.startItem = this.itemPerPage * (this.currentPage -1);
        this.endItem = this.itemPerPage * this.currentPage -1;
        this.endItem = (this.endItem >= this.totalItems) ? (this.totalItems -1) : this.endItem;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public int getTottalPage() {
        return tottalPage;
    }

    public int getTotalItems() {
        return totalItems;
    }

    public int getStartItem() {
        return startItem;
    }

    public int getEndItem() {
        return endItem;
    }

    public int getNextPage() {
        return nextPage;
    }

    public int getPrePage() {
        return prePage;
    }

    public int getItemPerPage() {
        return itemPerPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public void setTottalPage(int tottalPage) {
        this.tottalPage = tottalPage;
    }

    public void setTotalItems(int totalItems) {
        this.totalItems = totalItems;
    }

    public void setStartItem(int startItem) {
        this.startItem = startItem;
    }

    public void setEndItem(int endItem) {
        this.endItem = endItem;
    }

    public void setNextPage(int nextPage) {
        this.nextPage = nextPage;
    }

    public void setPrePage(int prePage) {
        this.prePage = prePage;
    }

    public void setItemPerPage(int itemPerPage) {
        this.itemPerPage = itemPerPage;
    }
    
    
}
