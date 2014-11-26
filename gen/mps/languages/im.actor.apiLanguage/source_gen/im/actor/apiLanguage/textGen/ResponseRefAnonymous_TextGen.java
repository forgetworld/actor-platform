package im.actor.apiLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.textGen.SNodeTextGen;
import org.jetbrains.mps.openapi.model.SNode;
import im.actor.apiLanguage.behavior.HeaderKey_Behavior;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class ResponseRefAnonymous_TextGen extends SNodeTextGen {
  public void doGenerateText(SNode node) {
    this.append("{\"type\":\"anonymous\",\"header\":");
    this.append(HeaderKey_Behavior.call_intValue_4689615199750893375(SLinkOperations.getTarget(node, "header", true)) + "");
    this.append(", \"attributes\":[");
    Boolean isFirstAttribute = true;
    for (SNode attr : ListSequence.fromList(SLinkOperations.getTargets(node, "attributes", true))) {
      if (!(isFirstAttribute)) {
        this.append(",");
      } else {
        isFirstAttribute = false;
      }
      this.append("{\"type\":");
      appendNode(SLinkOperations.getTarget(attr, "type", true));
      this.append(",\"id\":");
      this.append(SPropertyOperations.getInteger(attr, "id") + "");
      this.append(",\"name\":\"");
      this.append(SPropertyOperations.getString(attr, "name"));
      this.append("\"}");
      this.appendNewLine();
    }
    this.append("]}");
  }
}
