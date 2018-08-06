package com.company.northwind4cuba.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.global.DesignSupport;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Lob;
import com.haulmont.cuba.core.entity.BaseStringIdEntity;

@DesignSupport("{'imported':true}")
@NamePattern("%s|title")
@Table(name = "SALES_REPORT")
@Entity(name = "northwind4cuba$SalesReport")
public class SalesReport extends BaseStringIdEntity {
    private static final long serialVersionUID = -5346328671721325726L;

    @Column(name = "DISPLAY", length = 50)
    protected String display;

    @Column(name = "TITLE", length = 50)
    protected String title;

    @Lob
    @Column(name = "FILTER_ROW_SOURCE")
    protected String filterRowSource;

    @Column(name = "DEFAULT_", nullable = false)
    protected Boolean _default = false;

    @Column(name = "\"SSMA_TimeStamp\"", nullable = false)
    protected byte[] ssmaTimestamp;

    @Id
    @Column(name = "GROUP_BY", nullable = false, length = 50)
    protected String groupBy;

    public void setDisplay(String display) {
        this.display = display;
    }

    public String getDisplay() {
        return display;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setFilterRowSource(String filterRowSource) {
        this.filterRowSource = filterRowSource;
    }

    public String getFilterRowSource() {
        return filterRowSource;
    }

    public void set_default(Boolean _default) {
        this._default = _default;
    }

    public Boolean get_default() {
        return _default;
    }

    public byte[] getSsmaTimestamp() {
        return ssmaTimestamp;
    }

    public void setGroupBy(String groupBy) {
        this.groupBy = groupBy;
    }

    public String getGroupBy() {
        return groupBy;
    }

    @Override
    public String getId() {
        return groupBy;
    }

    @Override
    public void setId(String id) {
        this.groupBy = id;
    }


}