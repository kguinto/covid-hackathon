
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Frye Regional Medical Center',
      '420 N Center St
HIckory, NC 28601',
      'Hickory',
      'NC',
      'Mail typically, but willing to consider other options depending on distance',
      'Unsure',
      '35.7375114',
      '-81.3370193'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frye Regional Medical Center'
        AND o.latitude = '35.7375114'
        AND o.longitude = '-81.3370193'));

COMMIT;
