
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
      'Jewish Home for the Aging ',
      '7150 Tampa Ave
Reseda, CA 91335',
      'Reseda',
      'CA',
      'Security gate ',
      'Yes',
      '34.2005491',
      '-118.5530298'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jewish Home for the Aging '
        AND o.latitude = '34.2005491'
        AND o.longitude = '-118.5530298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jewish Home for the Aging '
        AND o.latitude = '34.2005491'
        AND o.longitude = '-118.5530298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jewish Home for the Aging '
        AND o.latitude = '34.2005491'
        AND o.longitude = '-118.5530298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jewish Home for the Aging '
        AND o.latitude = '34.2005491'
        AND o.longitude = '-118.5530298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jewish Home for the Aging '
        AND o.latitude = '34.2005491'
        AND o.longitude = '-118.5530298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jewish Home for the Aging '
        AND o.latitude = '34.2005491'
        AND o.longitude = '-118.5530298'));

COMMIT;
