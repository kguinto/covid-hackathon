
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
      'Scripps mercy San Diego ',
      '4077 Fifth Ave
San Diego, CA 92103',
      'San Diego ',
      'CA',
      'Unsure currently. ',
      'Yes',
      '32.7515656',
      '-117.16039'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps mercy San Diego '
        AND o.latitude = '32.7515656'
        AND o.longitude = '-117.16039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps mercy San Diego '
        AND o.latitude = '32.7515656'
        AND o.longitude = '-117.16039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps mercy San Diego '
        AND o.latitude = '32.7515656'
        AND o.longitude = '-117.16039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps mercy San Diego '
        AND o.latitude = '32.7515656'
        AND o.longitude = '-117.16039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps mercy San Diego '
        AND o.latitude = '32.7515656'
        AND o.longitude = '-117.16039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps mercy San Diego '
        AND o.latitude = '32.7515656'
        AND o.longitude = '-117.16039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps mercy San Diego '
        AND o.latitude = '32.7515656'
        AND o.longitude = '-117.16039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps mercy San Diego '
        AND o.latitude = '32.7515656'
        AND o.longitude = '-117.16039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps mercy San Diego '
        AND o.latitude = '32.7515656'
        AND o.longitude = '-117.16039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scripps mercy San Diego '
        AND o.latitude = '32.7515656'
        AND o.longitude = '-117.16039'));

COMMIT;
