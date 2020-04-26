
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
      'ENT and Allergy Associates ',
      '660 White Plains Rd #400
Tarrytown, NY 10591',
      'Tarrytown ',
      'NY',
      '',
      'No',
      '41.0598012',
      '-73.8347386'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ENT and Allergy Associates '
        AND o.latitude = '41.0598012'
        AND o.longitude = '-73.8347386'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ENT and Allergy Associates '
        AND o.latitude = '41.0598012'
        AND o.longitude = '-73.8347386'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'ENT and Allergy Associates '
        AND o.latitude = '41.0598012'
        AND o.longitude = '-73.8347386'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'ENT and Allergy Associates '
        AND o.latitude = '41.0598012'
        AND o.longitude = '-73.8347386'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'ENT and Allergy Associates '
        AND o.latitude = '41.0598012'
        AND o.longitude = '-73.8347386'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'ENT and Allergy Associates '
        AND o.latitude = '41.0598012'
        AND o.longitude = '-73.8347386'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'ENT and Allergy Associates '
        AND o.latitude = '41.0598012'
        AND o.longitude = '-73.8347386'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'ENT and Allergy Associates '
        AND o.latitude = '41.0598012'
        AND o.longitude = '-73.8347386'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'ENT and Allergy Associates '
        AND o.latitude = '41.0598012'
        AND o.longitude = '-73.8347386'));

COMMIT;
