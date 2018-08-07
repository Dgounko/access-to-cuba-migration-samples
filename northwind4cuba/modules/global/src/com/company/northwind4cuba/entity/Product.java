package com.company.northwind4cuba.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.global.DesignSupport;
import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.Lob;
import com.haulmont.cuba.core.entity.BaseIntIdentityIdEntity;

@DesignSupport("{'imported':true}")
@NamePattern("%s|productName")
@Table(name = "PRODUCT")
@Entity(name = "northwind4cuba$Product")
public class Product extends BaseIntIdentityIdEntity {
    private static final long serialVersionUID = -6614048767499067629L;

    @Column(name = "SUPPLIER_IDS", length = 8000)
    protected String supplierIds;

    @Column(name = "PRODUCT_CODE", length = 25)
    protected String productCode;

    @Column(name = "PRODUCT_NAME", length = 50)
    protected String productName;

    @Lob
    @Column(name = "DESCRIPTION")
    protected String description;

    @Column(name = "STANDARD_COST", precision = 19, scale = 4)
    protected BigDecimal standardCost;

    @Column(name = "LIST_PRICE", nullable = false, precision = 19, scale = 4)
    protected BigDecimal listPrice;

    @Column(name = "REORDER_LEVEL")
    protected Integer reorderLevel;

    @Column(name = "TARGET_LEVEL")
    protected Integer targetLevel;

    @Column(name = "QUANTITY_PER_UNIT", length = 50)
    protected String quantityPerUnit;

    @Column(name = "DISCONTINUED", nullable = false)
    protected Boolean discontinued = false;

    @Column(name = "MINIMUM_REORDER_QUANTITY")
    protected Integer minimumReorderQuantity;

    @Column(name = "CATEGORY", length = 50)
    protected String category;

    @Column(name = "ATTACHMENTS", length = 8000)
    protected String attachments;

    @Column(name = "\"SSMA_TimeStamp\"", nullable = false)
    protected byte[] ssmaTimestamp;

    public void setSupplierIds(String supplierIds) {
        this.supplierIds = supplierIds;
    }

    public String getSupplierIds() {
        return supplierIds;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductName() {
        return productName;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public void setStandardCost(BigDecimal standardCost) {
        this.standardCost = standardCost;
    }

    public BigDecimal getStandardCost() {
        return standardCost;
    }

    public void setListPrice(BigDecimal listPrice) {
        this.listPrice = listPrice;
    }

    public BigDecimal getListPrice() {
        return listPrice;
    }

    public void setReorderLevel(Integer reorderLevel) {
        this.reorderLevel = reorderLevel;
    }

    public Integer getReorderLevel() {
        return reorderLevel;
    }

    public void setTargetLevel(Integer targetLevel) {
        this.targetLevel = targetLevel;
    }

    public Integer getTargetLevel() {
        return targetLevel;
    }

    public void setQuantityPerUnit(String quantityPerUnit) {
        this.quantityPerUnit = quantityPerUnit;
    }

    public String getQuantityPerUnit() {
        return quantityPerUnit;
    }

    public void setDiscontinued(Boolean discontinued) {
        this.discontinued = discontinued;
    }

    public Boolean getDiscontinued() {
        return discontinued;
    }

    public void setMinimumReorderQuantity(Integer minimumReorderQuantity) {
        this.minimumReorderQuantity = minimumReorderQuantity;
    }

    public Integer getMinimumReorderQuantity() {
        return minimumReorderQuantity;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getCategory() {
        return category;
    }

    public void setAttachments(String attachments) {
        this.attachments = attachments;
    }

    public String getAttachments() {
        return attachments;
    }

    public byte[] getSsmaTimestamp() {
        return ssmaTimestamp;
    }


}