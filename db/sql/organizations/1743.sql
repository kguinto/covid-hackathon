
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
      'Conemaugh Memorial Medical Center',
      '1086 Franklin St
Johnstown, PA 15905',
      'Johnstown ',
      'PA',
      'ATTN: Dr. Lusine Mesropyan ',
      'Yes',
      '40.3052967',
      '-78.9195098'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conemaugh Memorial Medical Center'
        AND o.latitude = '40.3052967'
        AND o.longitude = '-78.9195098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Conemaugh Memorial Medical Center'
        AND o.latitude = '40.3052967'
        AND o.longitude = '-78.9195098'));

COMMIT;
