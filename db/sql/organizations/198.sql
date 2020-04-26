
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
      'Winchester Hospital',
      '41 Highland Avenue
Winchester, MA 01890',
      'Winchester',
      'MA',
      'Email smahone4@bidmc.harvard.edu with detailed information including the brand and the quantity of the items you wish to donate. Visit https://bilh.org/donations for more information.',
      'No',
      '42.4658868',
      '-71.1224312'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winchester Hospital'
        AND o.latitude = '42.4658868'
        AND o.longitude = '-71.1224312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winchester Hospital'
        AND o.latitude = '42.4658868'
        AND o.longitude = '-71.1224312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winchester Hospital'
        AND o.latitude = '42.4658868'
        AND o.longitude = '-71.1224312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winchester Hospital'
        AND o.latitude = '42.4658868'
        AND o.longitude = '-71.1224312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winchester Hospital'
        AND o.latitude = '42.4658868'
        AND o.longitude = '-71.1224312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winchester Hospital'
        AND o.latitude = '42.4658868'
        AND o.longitude = '-71.1224312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winchester Hospital'
        AND o.latitude = '42.4658868'
        AND o.longitude = '-71.1224312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winchester Hospital'
        AND o.latitude = '42.4658868'
        AND o.longitude = '-71.1224312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winchester Hospital'
        AND o.latitude = '42.4658868'
        AND o.longitude = '-71.1224312'));

COMMIT;
