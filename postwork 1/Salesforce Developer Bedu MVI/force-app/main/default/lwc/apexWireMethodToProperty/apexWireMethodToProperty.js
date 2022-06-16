import { LightningElement, wire } from 'lwc';
import getConactList from '@salesforce/apex/ContactController.getContactList';

export default class ApexWireMethodToProperty extends LightningElement {
    @wire (getConactList) contacts;
}