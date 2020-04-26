
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
      'Avamere Health Services',
      '25115 SW Parkway Ave. Suite B
Wilsonville, OR 97070',
      'Wilsonville',
      'OR',
      'Suite B: Kelsey Margheim ',
      'Yes',
      '45.3386155',
      '-122.7673044'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Health Services'
        AND o.latitude = '45.3386155'
        AND o.longitude = '-122.7673044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Health Services'
        AND o.latitude = '45.3386155'
        AND o.longitude = '-122.7673044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Health Services'
        AND o.latitude = '45.3386155'
        AND o.longitude = '-122.7673044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Health Services'
        AND o.latitude = '45.3386155'
        AND o.longitude = '-122.7673044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Health Services'
        AND o.latitude = '45.3386155'
        AND o.longitude = '-122.7673044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Health Services'
        AND o.latitude = '45.3386155'
        AND o.longitude = '-122.7673044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Health Services'
        AND o.latitude = '45.3386155'
        AND o.longitude = '-122.7673044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Health Services'
        AND o.latitude = '45.3386155'
        AND o.longitude = '-122.7673044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Health Services'
        AND o.latitude = '45.3386155'
        AND o.longitude = '-122.7673044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Health Services'
        AND o.latitude = '45.3386155'
        AND o.longitude = '-122.7673044'));

COMMIT;
