
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
      'Cooper Dentistry ',
      '1415 Pine St
Columbia, SC 29204',
      'Columbia',
      'SC',
      '',
      'No',
      '34.009484',
      '-81.0193256'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cooper Dentistry '
        AND o.latitude = '34.009484'
        AND o.longitude = '-81.0193256'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cooper Dentistry '
        AND o.latitude = '34.009484'
        AND o.longitude = '-81.0193256'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cooper Dentistry '
        AND o.latitude = '34.009484'
        AND o.longitude = '-81.0193256'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cooper Dentistry '
        AND o.latitude = '34.009484'
        AND o.longitude = '-81.0193256'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cooper Dentistry '
        AND o.latitude = '34.009484'
        AND o.longitude = '-81.0193256'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cooper Dentistry '
        AND o.latitude = '34.009484'
        AND o.longitude = '-81.0193256'));

COMMIT;
