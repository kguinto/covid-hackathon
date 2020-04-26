
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
      'Hospital of the University of Pennsylvania',
      'Maloney Bldg
Philadelphia, PA 19104',
      'Philadelphia',
      'PA',
      '',
      'Yes',
      '39.9505413',
      '-75.1951088'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital of the University of Pennsylvania'
        AND o.latitude = '39.9505413'
        AND o.longitude = '-75.1951088'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital of the University of Pennsylvania'
        AND o.latitude = '39.9505413'
        AND o.longitude = '-75.1951088'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital of the University of Pennsylvania'
        AND o.latitude = '39.9505413'
        AND o.longitude = '-75.1951088'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital of the University of Pennsylvania'
        AND o.latitude = '39.9505413'
        AND o.longitude = '-75.1951088'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital of the University of Pennsylvania'
        AND o.latitude = '39.9505413'
        AND o.longitude = '-75.1951088'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital of the University of Pennsylvania'
        AND o.latitude = '39.9505413'
        AND o.longitude = '-75.1951088'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital of the University of Pennsylvania'
        AND o.latitude = '39.9505413'
        AND o.longitude = '-75.1951088'));

COMMIT;
