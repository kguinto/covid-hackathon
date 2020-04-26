
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
      'Scripps Health',
      'For details please email supplychainmanagement@scrippshealth.org',
      'San Diego',
      'CA',
      'See https://www.scripps.org/news_items/6882-what-is-coronavirus-who-is-affected - If planning to donate, please contact email supplychainmanagement@scrippshealth.org first.',
      'No',
      'N/A',
      'N/A'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps Health'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps Health'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps Health'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps Health'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps Health'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps Health'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps Health'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps Health'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps Health'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps Health'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

COMMIT;
