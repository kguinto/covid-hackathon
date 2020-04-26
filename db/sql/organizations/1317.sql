
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
      'ER Near Me',
      '15240 Dallas Pkwy
Dallas, TX 75248',
      'Dallas',
      'TX',
      'Call 214-566-6871 to arrange for drop off ',
      'Yes',
      '32.9562615',
      '-96.8204458'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ER Near Me'
        AND o.latitude = '32.9562615'
        AND o.longitude = '-96.8204458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ER Near Me'
        AND o.latitude = '32.9562615'
        AND o.longitude = '-96.8204458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'ER Near Me'
        AND o.latitude = '32.9562615'
        AND o.longitude = '-96.8204458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'ER Near Me'
        AND o.latitude = '32.9562615'
        AND o.longitude = '-96.8204458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'ER Near Me'
        AND o.latitude = '32.9562615'
        AND o.longitude = '-96.8204458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'ER Near Me'
        AND o.latitude = '32.9562615'
        AND o.longitude = '-96.8204458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'ER Near Me'
        AND o.latitude = '32.9562615'
        AND o.longitude = '-96.8204458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'ER Near Me'
        AND o.latitude = '32.9562615'
        AND o.longitude = '-96.8204458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'ER Near Me'
        AND o.latitude = '32.9562615'
        AND o.longitude = '-96.8204458'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'ER Near Me'
        AND o.latitude = '32.9562615'
        AND o.longitude = '-96.8204458'));

COMMIT;
