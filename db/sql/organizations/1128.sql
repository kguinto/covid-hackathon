
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
      'Peritech Home Health',
      '375 Beaver Dr
DuBois, PA 15801',
      'DuBois ',
      'PA',
      '',
      'Yes',
      '41.1234754',
      '-78.7504104'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Peritech Home Health'
        AND o.latitude = '41.1234754'
        AND o.longitude = '-78.7504104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Peritech Home Health'
        AND o.latitude = '41.1234754'
        AND o.longitude = '-78.7504104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Peritech Home Health'
        AND o.latitude = '41.1234754'
        AND o.longitude = '-78.7504104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Peritech Home Health'
        AND o.latitude = '41.1234754'
        AND o.longitude = '-78.7504104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Peritech Home Health'
        AND o.latitude = '41.1234754'
        AND o.longitude = '-78.7504104'));

COMMIT;
