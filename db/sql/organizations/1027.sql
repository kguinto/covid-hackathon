
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
      'Claremont Care Center',
      '219 E Foothill Blvd
Pomona, CA 91768',
      'Pomona',
      'CA',
      'Drop off at front entrance',
      'Yes',
      '34.1078362',
      '-117.7458587'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Claremont Care Center'
        AND o.latitude = '34.1078362'
        AND o.longitude = '-117.7458587'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Claremont Care Center'
        AND o.latitude = '34.1078362'
        AND o.longitude = '-117.7458587'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Claremont Care Center'
        AND o.latitude = '34.1078362'
        AND o.longitude = '-117.7458587'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Claremont Care Center'
        AND o.latitude = '34.1078362'
        AND o.longitude = '-117.7458587'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Claremont Care Center'
        AND o.latitude = '34.1078362'
        AND o.longitude = '-117.7458587'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Claremont Care Center'
        AND o.latitude = '34.1078362'
        AND o.longitude = '-117.7458587'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Claremont Care Center'
        AND o.latitude = '34.1078362'
        AND o.longitude = '-117.7458587'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Claremont Care Center'
        AND o.latitude = '34.1078362'
        AND o.longitude = '-117.7458587'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Claremont Care Center'
        AND o.latitude = '34.1078362'
        AND o.longitude = '-117.7458587'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Claremont Care Center'
        AND o.latitude = '34.1078362'
        AND o.longitude = '-117.7458587'));

COMMIT;
