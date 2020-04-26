
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
      'Abington memorial hospital',
      '1200 Old York Rd
Abington, PA 19001',
      'Abington ',
      'PA',
      'Curbside ',
      'Yes',
      '40.119158',
      '-75.11986'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Abington memorial hospital'
        AND o.latitude = '40.119158'
        AND o.longitude = '-75.11986'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Abington memorial hospital'
        AND o.latitude = '40.119158'
        AND o.longitude = '-75.11986'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Abington memorial hospital'
        AND o.latitude = '40.119158'
        AND o.longitude = '-75.11986'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Abington memorial hospital'
        AND o.latitude = '40.119158'
        AND o.longitude = '-75.11986'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Abington memorial hospital'
        AND o.latitude = '40.119158'
        AND o.longitude = '-75.11986'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Abington memorial hospital'
        AND o.latitude = '40.119158'
        AND o.longitude = '-75.11986'));

COMMIT;
