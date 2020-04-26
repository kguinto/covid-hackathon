
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
      'Hope Pediatrics',
      '3512 Route 257
Seneca, PA 16346',
      'Seneca ',
      'PA',
      '',
      'Yes',
      '41.3896866',
      '-79.702343'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Pediatrics'
        AND o.latitude = '41.3896866'
        AND o.longitude = '-79.702343'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Pediatrics'
        AND o.latitude = '41.3896866'
        AND o.longitude = '-79.702343'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Pediatrics'
        AND o.latitude = '41.3896866'
        AND o.longitude = '-79.702343'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Pediatrics'
        AND o.latitude = '41.3896866'
        AND o.longitude = '-79.702343'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Pediatrics'
        AND o.latitude = '41.3896866'
        AND o.longitude = '-79.702343'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Pediatrics'
        AND o.latitude = '41.3896866'
        AND o.longitude = '-79.702343'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Pediatrics'
        AND o.latitude = '41.3896866'
        AND o.longitude = '-79.702343'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Pediatrics'
        AND o.latitude = '41.3896866'
        AND o.longitude = '-79.702343'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Pediatrics'
        AND o.latitude = '41.3896866'
        AND o.longitude = '-79.702343'));

COMMIT;
