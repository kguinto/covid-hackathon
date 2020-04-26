
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
      'MedCare Associates',
      '1343 E Sonterra Blvd #206
San Antonio, TX 78258',
      'San Antonio',
      'TX',
      '1434 E Sonterra Blvd, Suite 206 San Antonio Tx, 78258 
Attn Ruby',
      'Yes',
      '29.615841',
      '-98.4914573'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedCare Associates'
        AND o.latitude = '29.615841'
        AND o.longitude = '-98.4914573'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedCare Associates'
        AND o.latitude = '29.615841'
        AND o.longitude = '-98.4914573'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedCare Associates'
        AND o.latitude = '29.615841'
        AND o.longitude = '-98.4914573'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedCare Associates'
        AND o.latitude = '29.615841'
        AND o.longitude = '-98.4914573'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedCare Associates'
        AND o.latitude = '29.615841'
        AND o.longitude = '-98.4914573'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedCare Associates'
        AND o.latitude = '29.615841'
        AND o.longitude = '-98.4914573'));

COMMIT;
