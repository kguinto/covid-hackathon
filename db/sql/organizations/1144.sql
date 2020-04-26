
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
      'Pine Valley Community Village',
      '25951 Circle View Dr
Richland Center, WI 53581',
      'Richland Center',
      'WI',
      'Drop off.',
      'Yes',
      '43.3037108',
      '-90.3525863'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pine Valley Community Village'
        AND o.latitude = '43.3037108'
        AND o.longitude = '-90.3525863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pine Valley Community Village'
        AND o.latitude = '43.3037108'
        AND o.longitude = '-90.3525863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pine Valley Community Village'
        AND o.latitude = '43.3037108'
        AND o.longitude = '-90.3525863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pine Valley Community Village'
        AND o.latitude = '43.3037108'
        AND o.longitude = '-90.3525863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pine Valley Community Village'
        AND o.latitude = '43.3037108'
        AND o.longitude = '-90.3525863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pine Valley Community Village'
        AND o.latitude = '43.3037108'
        AND o.longitude = '-90.3525863'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pine Valley Community Village'
        AND o.latitude = '43.3037108'
        AND o.longitude = '-90.3525863'));

COMMIT;
