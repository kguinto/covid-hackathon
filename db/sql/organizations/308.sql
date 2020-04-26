
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
      'Morton Plant Hospital ',
      '300 Pinellas St
Clearwater, FL 33756',
      'Clearwater ',
      'FL',
      '',
      'Yes',
      '27.9533568',
      '-82.8028719'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Plant Hospital '
        AND o.latitude = '27.9533568'
        AND o.longitude = '-82.8028719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Plant Hospital '
        AND o.latitude = '27.9533568'
        AND o.longitude = '-82.8028719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Plant Hospital '
        AND o.latitude = '27.9533568'
        AND o.longitude = '-82.8028719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Plant Hospital '
        AND o.latitude = '27.9533568'
        AND o.longitude = '-82.8028719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Plant Hospital '
        AND o.latitude = '27.9533568'
        AND o.longitude = '-82.8028719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Plant Hospital '
        AND o.latitude = '27.9533568'
        AND o.longitude = '-82.8028719'));

COMMIT;
