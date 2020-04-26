
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
      'Dartmouth-Hitchcock Manchester',
      '100 Hitchcock Way
Manchester, NH 03104',
      'Manchester',
      'NH',
      'Dartmouth-Hitchcock request for https://www.dartmouth-hitchcock.org/patient-education/sewing-masks.html',
      'Unclear',
      '43.010453',
      '-71.4235355'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Manchester'
        AND o.latitude = '43.010453'
        AND o.longitude = '-71.4235355'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Manchester'
        AND o.latitude = '43.010453'
        AND o.longitude = '-71.4235355'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Manchester'
        AND o.latitude = '43.010453'
        AND o.longitude = '-71.4235355'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Manchester'
        AND o.latitude = '43.010453'
        AND o.longitude = '-71.4235355'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Manchester'
        AND o.latitude = '43.010453'
        AND o.longitude = '-71.4235355'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Manchester'
        AND o.latitude = '43.010453'
        AND o.longitude = '-71.4235355'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Manchester'
        AND o.latitude = '43.010453'
        AND o.longitude = '-71.4235355'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Manchester'
        AND o.latitude = '43.010453'
        AND o.longitude = '-71.4235355'));

COMMIT;
