
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
      'Kaiser Permanente - San Jose',
      '250 Hospital Pkwy
San Jose, CA  95119',
      'San Jose ',
      'CA',
      'Mail to Dr. Balaji Venkat Attn: Gina Kortz at the provided address. Only new or unused masks (even if expired). Call 669-333-2684 if you have questions.',
      'Yes',
      '37.2398041',
      '-121.8002512'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Jose'
        AND o.latitude = '37.2398041'
        AND o.longitude = '-121.8002512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Jose'
        AND o.latitude = '37.2398041'
        AND o.longitude = '-121.8002512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Jose'
        AND o.latitude = '37.2398041'
        AND o.longitude = '-121.8002512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Jose'
        AND o.latitude = '37.2398041'
        AND o.longitude = '-121.8002512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Jose'
        AND o.latitude = '37.2398041'
        AND o.longitude = '-121.8002512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Jose'
        AND o.latitude = '37.2398041'
        AND o.longitude = '-121.8002512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Jose'
        AND o.latitude = '37.2398041'
        AND o.longitude = '-121.8002512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Jose'
        AND o.latitude = '37.2398041'
        AND o.longitude = '-121.8002512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Jose'
        AND o.latitude = '37.2398041'
        AND o.longitude = '-121.8002512'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Jose'
        AND o.latitude = '37.2398041'
        AND o.longitude = '-121.8002512'));

COMMIT;
