
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
      'Algoma Fire & Rescue',
      '313 Koss Ct
Algoma WI. 54201',
      'Algoma',
      'WI',
      'We are a volunteer dept and no one mans the station on a steady basis.  Please drop off at: 313 Koss Ct Algoma WI. 54201  That is the home address of our EMS Director.  ',
      'Yes',
      '44.60993',
      '-87.4580299'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Algoma Fire & Rescue'
        AND o.latitude = '44.60993'
        AND o.longitude = '-87.4580299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Algoma Fire & Rescue'
        AND o.latitude = '44.60993'
        AND o.longitude = '-87.4580299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Algoma Fire & Rescue'
        AND o.latitude = '44.60993'
        AND o.longitude = '-87.4580299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Algoma Fire & Rescue'
        AND o.latitude = '44.60993'
        AND o.longitude = '-87.4580299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Algoma Fire & Rescue'
        AND o.latitude = '44.60993'
        AND o.longitude = '-87.4580299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Algoma Fire & Rescue'
        AND o.latitude = '44.60993'
        AND o.longitude = '-87.4580299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Algoma Fire & Rescue'
        AND o.latitude = '44.60993'
        AND o.longitude = '-87.4580299'));

COMMIT;
