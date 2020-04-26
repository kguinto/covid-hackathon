
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
      'Beth Israel Deaconess Hospital - Plymouth',
      '275 Sandwich St
Plymouth, MA 02360',
      'Plymouth',
      'MA',
      'Email smahone4@bidmc.harvard.edu with detailed information including the brand and the quantity of the items you wish to donate. Visit https://bilh.org/donations for more information.',
      'No',
      '41.9430573',
      '-70.6452871'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Hospital - Plymouth'
        AND o.latitude = '41.9430573'
        AND o.longitude = '-70.6452871'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Hospital - Plymouth'
        AND o.latitude = '41.9430573'
        AND o.longitude = '-70.6452871'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Hospital - Plymouth'
        AND o.latitude = '41.9430573'
        AND o.longitude = '-70.6452871'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Hospital - Plymouth'
        AND o.latitude = '41.9430573'
        AND o.longitude = '-70.6452871'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Hospital - Plymouth'
        AND o.latitude = '41.9430573'
        AND o.longitude = '-70.6452871'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Hospital - Plymouth'
        AND o.latitude = '41.9430573'
        AND o.longitude = '-70.6452871'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Hospital - Plymouth'
        AND o.latitude = '41.9430573'
        AND o.longitude = '-70.6452871'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Hospital - Plymouth'
        AND o.latitude = '41.9430573'
        AND o.longitude = '-70.6452871'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Hospital - Plymouth'
        AND o.latitude = '41.9430573'
        AND o.longitude = '-70.6452871'));

COMMIT;
