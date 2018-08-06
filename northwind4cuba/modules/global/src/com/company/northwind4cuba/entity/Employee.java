package com.company.northwind4cuba.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import com.haulmont.cuba.core.global.DesignSupport;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import com.haulmont.cuba.core.entity.BaseIntIdentityIdEntity;

@DesignSupport("{'imported':true}")
@Table(name = "EMPLOYEE")
@Entity(name = "northwind4cuba$Employee")
public class Employee extends BaseIntIdentityIdEntity {
    private static final long serialVersionUID = 2651967417601024040L;

    @Column(name = "COMPANY", length = 50)
    protected String company;

    @Column(name = "LAST_NAME", length = 50)
    protected String lastName;

    @Column(name = "FIRST_NAME", length = 50)
    protected String firstName;

    @Column(name = "E_MAIL_ADDRESS", length = 50)
    protected String eMailAddress;

    @Column(name = "JOB_TITLE", length = 50)
    protected String jobTitle;

    @Column(name = "BUSINESS_PHONE", length = 25)
    protected String businessPhone;

    @Column(name = "HOME_PHONE", length = 25)
    protected String homePhone;

    @Column(name = "MOBILE_PHONE", length = 25)
    protected String mobilePhone;

    @Column(name = "FAX_NUMBER", length = 25)
    protected String faxNumber;

    @Lob
    @Column(name = "ADDRESS")
    protected String address;

    @Column(name = "CITY", length = 50)
    protected String city;

    @Column(name = "STATE_PROVINCE", length = 50)
    protected String stateProvince;

    @Column(name = "ZIP_POSTAL_CODE", length = 15)
    protected String zipPostalCode;

    @Column(name = "COUNTRY_REGION", length = 50)
    protected String countryRegion;

    @Lob
    @Column(name = "WEB_PAGE")
    protected String webPage;

    @Lob
    @Column(name = "NOTES")
    protected String notes;

    @Column(name = "ATTACHMENTS", length = 8000)
    protected String attachments;

    @Column(name = "\"SSMA_TimeStamp\"", nullable = false)
    protected byte[] ssmaTimestamp;

    @JoinTable(name = "EMPLOYEE_PRIVILEGES",
        joinColumns = @JoinColumn(name = "EMPLOYEE_ID"),
        inverseJoinColumns = @JoinColumn(name = "PRIVILEGE_ID"))
    @ManyToMany
    protected List<Privilege> privilege;

    public void setCompany(String company) {
        this.company = company;
    }

    public String getCompany() {
        return company;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setEMailAddress(String eMailAddress) {
        this.eMailAddress = eMailAddress;
    }

    public String getEMailAddress() {
        return eMailAddress;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setBusinessPhone(String businessPhone) {
        this.businessPhone = businessPhone;
    }

    public String getBusinessPhone() {
        return businessPhone;
    }

    public void setHomePhone(String homePhone) {
        this.homePhone = homePhone;
    }

    public String getHomePhone() {
        return homePhone;
    }

    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
    }

    public String getMobilePhone() {
        return mobilePhone;
    }

    public void setFaxNumber(String faxNumber) {
        this.faxNumber = faxNumber;
    }

    public String getFaxNumber() {
        return faxNumber;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCity() {
        return city;
    }

    public void setStateProvince(String stateProvince) {
        this.stateProvince = stateProvince;
    }

    public String getStateProvince() {
        return stateProvince;
    }

    public void setZipPostalCode(String zipPostalCode) {
        this.zipPostalCode = zipPostalCode;
    }

    public String getZipPostalCode() {
        return zipPostalCode;
    }

    public void setCountryRegion(String countryRegion) {
        this.countryRegion = countryRegion;
    }

    public String getCountryRegion() {
        return countryRegion;
    }

    public void setWebPage(String webPage) {
        this.webPage = webPage;
    }

    public String getWebPage() {
        return webPage;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getNotes() {
        return notes;
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

    public void setPrivilege(List<Privilege> privilege) {
        this.privilege = privilege;
    }

    public List<Privilege> getPrivilege() {
        return privilege;
    }


}