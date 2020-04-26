
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
      'Country View Assisted Living',
      '824 W Cameron Ave
West Covina, CA 91790',
      'West Covina',
      'CA',
      '',
      '',
      '34.0617851',
      '-117.9329094'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Country View Assisted Living'
        AND o.latitude = '34.0617851'
        AND o.longitude = '-117.9329094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Country View Assisted Living'
        AND o.latitude = '34.0617851'
        AND o.longitude = '-117.9329094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Country View Assisted Living'
        AND o.latitude = '34.0617851'
        AND o.longitude = '-117.9329094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Country View Assisted Living'
        AND o.latitude = '34.0617851'
        AND o.longitude = '-117.9329094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Country View Assisted Living'
        AND o.latitude = '34.0617851'
        AND o.longitude = '-117.9329094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Country View Assisted Living'
        AND o.latitude = '34.0617851'
        AND o.longitude = '-117.9329094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Country View Assisted Living'
        AND o.latitude = '34.0617851'
        AND o.longitude = '-117.9329094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Country View Assisted Living'
        AND o.latitude = '34.0617851'
        AND o.longitude = '-117.9329094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Country View Assisted Living'
        AND o.latitude = '34.0617851'
        AND o.longitude = '-117.9329094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Country View Assisted Living'
        AND o.latitude = '34.0617851'
        AND o.longitude = '-117.9329094'));

COMMIT;
