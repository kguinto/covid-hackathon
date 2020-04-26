
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
      'Family Health Clinic ',
      '401 Broad Ave
Susquehanna, PA 18847',
      'Susquehanna ',
      'PA',
      'Warren ',
      'Yes',
      '41.9466116',
      '-75.5943144'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Clinic '
        AND o.latitude = '41.9466116'
        AND o.longitude = '-75.5943144'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Clinic '
        AND o.latitude = '41.9466116'
        AND o.longitude = '-75.5943144'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Clinic '
        AND o.latitude = '41.9466116'
        AND o.longitude = '-75.5943144'));

COMMIT;
