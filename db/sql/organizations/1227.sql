
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
      'Holy Cross Hospital ',
      '4896 NE 20th Ave
Fort Lauderdale, FL 33308',
      'Fort Lauderdale',
      'FL',
      'Look for the tan building with blue awning. Ring doorbell and drop off at office.

OR

Call Community Outreach at 954-542-1651.',
      'No',
      '26.1881825',
      '-80.1180915'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Hospital '
        AND o.latitude = '26.1881825'
        AND o.longitude = '-80.1180915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Hospital '
        AND o.latitude = '26.1881825'
        AND o.longitude = '-80.1180915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Hospital '
        AND o.latitude = '26.1881825'
        AND o.longitude = '-80.1180915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Hospital '
        AND o.latitude = '26.1881825'
        AND o.longitude = '-80.1180915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Hospital '
        AND o.latitude = '26.1881825'
        AND o.longitude = '-80.1180915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Hospital '
        AND o.latitude = '26.1881825'
        AND o.longitude = '-80.1180915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Hospital '
        AND o.latitude = '26.1881825'
        AND o.longitude = '-80.1180915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Hospital '
        AND o.latitude = '26.1881825'
        AND o.longitude = '-80.1180915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Hospital '
        AND o.latitude = '26.1881825'
        AND o.longitude = '-80.1180915'));

COMMIT;
