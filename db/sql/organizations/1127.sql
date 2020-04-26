
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
      'McLaren Hospital Foundation',
      '407 W Greenlawn Ave
Lansing, MI 48910',
      'Lansing',
      'MI',
      'Please call (517) 975-7100 to notify us of the person/people who is/are going to drop off prior to drop.  We will come out to the vehicle to unload the supplies so the person/people delivering the items does/do not need to come inside the building.',
      'Yes',
      '42.7043198',
      '-84.5568609'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'McLaren Hospital Foundation'
        AND o.latitude = '42.7043198'
        AND o.longitude = '-84.5568609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'McLaren Hospital Foundation'
        AND o.latitude = '42.7043198'
        AND o.longitude = '-84.5568609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'McLaren Hospital Foundation'
        AND o.latitude = '42.7043198'
        AND o.longitude = '-84.5568609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'McLaren Hospital Foundation'
        AND o.latitude = '42.7043198'
        AND o.longitude = '-84.5568609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'McLaren Hospital Foundation'
        AND o.latitude = '42.7043198'
        AND o.longitude = '-84.5568609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'McLaren Hospital Foundation'
        AND o.latitude = '42.7043198'
        AND o.longitude = '-84.5568609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'McLaren Hospital Foundation'
        AND o.latitude = '42.7043198'
        AND o.longitude = '-84.5568609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'McLaren Hospital Foundation'
        AND o.latitude = '42.7043198'
        AND o.longitude = '-84.5568609'));

COMMIT;
