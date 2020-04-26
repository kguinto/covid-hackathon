
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
      'Kaiser Permanente Woodland Hills California ',
      '5601 De Soto Ave
Woodland Hills, CA 91367',
      'Woodland Hills',
      'CA',
      'Pediatric department Jonathan Reid/Maryam Ghavami ',
      'Yes',
      '34.1709445',
      '-118.5896036'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Woodland Hills California '
        AND o.latitude = '34.1709445'
        AND o.longitude = '-118.5896036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Woodland Hills California '
        AND o.latitude = '34.1709445'
        AND o.longitude = '-118.5896036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Woodland Hills California '
        AND o.latitude = '34.1709445'
        AND o.longitude = '-118.5896036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Woodland Hills California '
        AND o.latitude = '34.1709445'
        AND o.longitude = '-118.5896036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Woodland Hills California '
        AND o.latitude = '34.1709445'
        AND o.longitude = '-118.5896036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Woodland Hills California '
        AND o.latitude = '34.1709445'
        AND o.longitude = '-118.5896036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Woodland Hills California '
        AND o.latitude = '34.1709445'
        AND o.longitude = '-118.5896036'));

COMMIT;
