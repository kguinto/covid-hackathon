
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
      'TPG Pediatrics',
      '7015-C Manchester Blvd
Alexandria, VA 22310',
      'Alexandria',
      'VA',
      '',
      'Yes',
      '38.7648409',
      '-77.1525148'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'TPG Pediatrics'
        AND o.latitude = '38.7648409'
        AND o.longitude = '-77.1525148'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'TPG Pediatrics'
        AND o.latitude = '38.7648409'
        AND o.longitude = '-77.1525148'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'TPG Pediatrics'
        AND o.latitude = '38.7648409'
        AND o.longitude = '-77.1525148'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'TPG Pediatrics'
        AND o.latitude = '38.7648409'
        AND o.longitude = '-77.1525148'));

COMMIT;
