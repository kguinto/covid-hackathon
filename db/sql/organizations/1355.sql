
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
      'One Medical ',
      '12180 SW Scholls Ferry Rd
Tigard, OR 97223',
      'Tigard',
      'OR',
      'Please deliver to front desk staff inside the office. ',
      'Yes',
      '45.4427792',
      '-122.8010863'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '45.4427792'
        AND o.longitude = '-122.8010863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '45.4427792'
        AND o.longitude = '-122.8010863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '45.4427792'
        AND o.longitude = '-122.8010863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '45.4427792'
        AND o.longitude = '-122.8010863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '45.4427792'
        AND o.longitude = '-122.8010863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '45.4427792'
        AND o.longitude = '-122.8010863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '45.4427792'
        AND o.longitude = '-122.8010863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '45.4427792'
        AND o.longitude = '-122.8010863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical '
        AND o.latitude = '45.4427792'
        AND o.longitude = '-122.8010863'));

COMMIT;
