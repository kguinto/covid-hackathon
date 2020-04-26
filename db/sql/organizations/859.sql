
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
      'Medical X-Ray Consultants ',
      '2715 W Frank St
Eau Claire, WI 54703',
      'Eau Claire ',
      'WI',
      '',
      'Yes',
      '44.8226101',
      '-91.546324'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical X-Ray Consultants '
        AND o.latitude = '44.8226101'
        AND o.longitude = '-91.546324'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical X-Ray Consultants '
        AND o.latitude = '44.8226101'
        AND o.longitude = '-91.546324'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical X-Ray Consultants '
        AND o.latitude = '44.8226101'
        AND o.longitude = '-91.546324'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical X-Ray Consultants '
        AND o.latitude = '44.8226101'
        AND o.longitude = '-91.546324'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical X-Ray Consultants '
        AND o.latitude = '44.8226101'
        AND o.longitude = '-91.546324'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical X-Ray Consultants '
        AND o.latitude = '44.8226101'
        AND o.longitude = '-91.546324'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical X-Ray Consultants '
        AND o.latitude = '44.8226101'
        AND o.longitude = '-91.546324'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical X-Ray Consultants '
        AND o.latitude = '44.8226101'
        AND o.longitude = '-91.546324'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical X-Ray Consultants '
        AND o.latitude = '44.8226101'
        AND o.longitude = '-91.546324'));

COMMIT;
