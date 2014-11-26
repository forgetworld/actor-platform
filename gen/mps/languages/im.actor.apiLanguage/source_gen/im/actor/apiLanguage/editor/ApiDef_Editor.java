package im.actor.apiLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.editor.runtime.cells.BigCellUtil;
import jetbrains.mps.nodeEditor.cells.EditorCell_Error;

public class ApiDef_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createAlternation_vc77m8_a(editorContext, node);
  }

  private EditorCell createAlternation_vc77m8_a(EditorContext editorContext, SNode node) {
    boolean alternationCondition = true;
    alternationCondition = ApiDef_Editor.renderingCondition_vc77m8_a0(node, editorContext);
    EditorCell editorCell = null;
    if (alternationCondition) {
      editorCell = this.createError_vc77m8_a0(editorContext, node);
    } else {
      editorCell = this.createComponent_vc77m8_a0(editorContext, node);
    }
    EditorCell bigCell = BigCellUtil.findBigCell(editorCell, node);
    if (bigCell != null) {
      bigCell.setBig(true);
    }
    return editorCell;
  }

  private static boolean renderingCondition_vc77m8_a0(SNode node, EditorContext editorContext) {
    return "ApiDef".equals(node + "");
  }

  private EditorCell createError_vc77m8_a0(EditorContext editorContext, SNode node) {
    EditorCell_Error editorCell = new EditorCell_Error(editorContext, node, "<no def>");
    editorCell.setCellId("Error_vc77m8_a0");
    return editorCell;
  }

  private EditorCell createComponent_vc77m8_a0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.lang.core.editor.alias");
    return editorCell;
  }
}
