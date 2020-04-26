
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
      'Windsor Gardens Care Center of Fullerton',
      '245 E Wilshire Ave
Fullerton, CA 92832',
      'Fullerton',
      'CA',
      'Lindsey Mason',
      'Yes',
      '33.8726619',
      '-117.9205979'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Windsor Gardens Care Center of Fullerton'
        AND o.latitude = '33.8726619'
        AND o.longitude = '-117.9205979'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Windsor Gardens Care Center of Fullerton'
        AND o.latitude = '33.8726619'
        AND o.longitude = '-117.9205979'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Windsor Gardens Care Center of Fullerton'
        AND o.latitude = '33.8726619'
        AND o.longitude = '-117.9205979'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Windsor Gardens Care Center of Fullerton'
        AND o.latitude = '33.8726619'
        AND o.longitude = '-117.9205979'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Windsor Gardens Care Center of Fullerton'
        AND o.latitude = '33.8726619'
        AND o.longitude = '-117.9205979'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Windsor Gardens Care Center of Fullerton'
        AND o.latitude = '33.8726619'
        AND o.longitude = '-117.9205979'));

COMMIT;
