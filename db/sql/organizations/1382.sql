
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
      'Grassroots Crisis Intervention Center',
      '6700 Freetown Rd
Columbia, MD 21044',
      'Columbia',
      'MD',
      'Donations can be dropped off at the main front entrance of the building.  There is a table set up for donation drop-offs.',
      'Yes',
      '39.1864323',
      '-76.8788971'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grassroots Crisis Intervention Center'
        AND o.latitude = '39.1864323'
        AND o.longitude = '-76.8788971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grassroots Crisis Intervention Center'
        AND o.latitude = '39.1864323'
        AND o.longitude = '-76.8788971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grassroots Crisis Intervention Center'
        AND o.latitude = '39.1864323'
        AND o.longitude = '-76.8788971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grassroots Crisis Intervention Center'
        AND o.latitude = '39.1864323'
        AND o.longitude = '-76.8788971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grassroots Crisis Intervention Center'
        AND o.latitude = '39.1864323'
        AND o.longitude = '-76.8788971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grassroots Crisis Intervention Center'
        AND o.latitude = '39.1864323'
        AND o.longitude = '-76.8788971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grassroots Crisis Intervention Center'
        AND o.latitude = '39.1864323'
        AND o.longitude = '-76.8788971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grassroots Crisis Intervention Center'
        AND o.latitude = '39.1864323'
        AND o.longitude = '-76.8788971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Isopropyl Alcohol',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grassroots Crisis Intervention Center'
        AND o.latitude = '39.1864323'
        AND o.longitude = '-76.8788971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Cleaning supplies',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grassroots Crisis Intervention Center'
        AND o.latitude = '39.1864323'
        AND o.longitude = '-76.8788971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Alcohol Prep Pads',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grassroots Crisis Intervention Center'
        AND o.latitude = '39.1864323'
        AND o.longitude = '-76.8788971'));

COMMIT;
