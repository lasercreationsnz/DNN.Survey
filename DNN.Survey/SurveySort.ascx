﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SurveySort.ascx.cs" Inherits="DNN.Modules.Survey.SurveySort" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke.Web" Namespace="DotNetNuke.Web.UI.WebControls" %>

<div class="dnnFormMessage dnnFormInfo"><asp:Label ID="SortHelpLabel" runat="server" ResourceKey="SortHelp" /></div>

<asp:DataGrid ID="QuestionsGrid" runat="server"
   AutoGenerateColumns ="false"
   BorderStyle="None"
   CssClass="dnnGrid"
   EnableViewState="true"
   GridLines="None"
   OnInit="QuestionsGrid_Init"
   OnItemCreated="QuestionsGrid_ItemCreated"
   Width="98%">
   <HeaderStyle CssClass="dnnGridHeader" VerticalAlign="Top"/>
   <ItemStyle CssClass="dnnGridItem" HorizontalAlign="Left" />
   <AlternatingItemStyle CssClass="dnnGridAltItem" />
   <SelectedItemStyle CssClass="dnnFormError" />
   <Columns>
      <asp:TemplateColumn>
         <ItemTemplate>
            <span class="SurveyHandle">
               <dnn:DnnImage ID="UpIcon" runat="server" IconKey="Up" ResourceKey="DragDrop" />
               <dnn:DnnImage ID="DnIcon" runat="server" IconKey="Dn" ResourceKey="DragDrop" />
            </span>
            <input type="hidden" name="SurveyID" value='<%# Eval("SurveyID") %>' />
         </ItemTemplate>
      </asp:TemplateColumn>
      <asp:BoundColumn DataField="Question" HeaderText="Question" />
      <asp:TemplateColumn HeaderText="QuestionType">
         <ItemTemplate>
            <asp:Label ID="QuestionTypeLabel" runat="server" />
         </ItemTemplate>
      </asp:TemplateColumn>
   </Columns>
</asp:DataGrid>

<ul class="dnnActions dnnClear">
   <li>
      <asp:LinkButton ID="UpdateButton" runat="server"
         CssClass="dnnPrimaryAction"
         OnClick="UpdateButton_Click"
         ResourceKey="cmdUpdate" />
   </li>
   <li>
      <asp:LinkButton ID="CancelButton" runat="server"
         CssClass="dnnSecondaryAction"
         OnClick="CancelButton_Click"
         ResourceKey="cmdCancel" />
   </li>
</ul>
