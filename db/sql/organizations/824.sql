
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
      'Community Health Center of Yavapai',
      '1090 Commerce Drive
Prescott, AZ 86305',
      'Prescott',
      'AZ',
      'Call 928-442-5612 to arrange drop off or pick up',
      'Yes',
      '34.6086454',
      '-112.4610971'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center of Yavapai'
        AND o.latitude = '34.6086454'
        AND o.longitude = '-112.4610971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center of Yavapai'
        AND o.latitude = '34.6086454'
        AND o.longitude = '-112.4610971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center of Yavapai'
        AND o.latitude = '34.6086454'
        AND o.longitude = '-112.4610971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center of Yavapai'
        AND o.latitude = '34.6086454'
        AND o.longitude = '-112.4610971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center of Yavapai'
        AND o.latitude = '34.6086454'
        AND o.longitude = '-112.4610971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center of Yavapai'
        AND o.latitude = '34.6086454'
        AND o.longitude = '-112.4610971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center of Yavapai'
        AND o.latitude = '34.6086454'
        AND o.longitude = '-112.4610971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center of Yavapai'
        AND o.latitude = '34.6086454'
        AND o.longitude = '-112.4610971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center of Yavapai'
        AND o.latitude = '34.6086454'
        AND o.longitude = '-112.4610971'));

COMMIT;
