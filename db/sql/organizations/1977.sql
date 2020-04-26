
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
      'Valleywise Health',
      '2601 E Roosevelt St
Phoenix, AZ 85008',
      'Phoenix',
      'AZ',
      'Curbside pickup ',
      'No',
      '33.4577349',
      '-112.0283148'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valleywise Health'
        AND o.latitude = '33.4577349'
        AND o.longitude = '-112.0283148'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valleywise Health'
        AND o.latitude = '33.4577349'
        AND o.longitude = '-112.0283148'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valleywise Health'
        AND o.latitude = '33.4577349'
        AND o.longitude = '-112.0283148'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valleywise Health'
        AND o.latitude = '33.4577349'
        AND o.longitude = '-112.0283148'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valleywise Health'
        AND o.latitude = '33.4577349'
        AND o.longitude = '-112.0283148'));

COMMIT;
