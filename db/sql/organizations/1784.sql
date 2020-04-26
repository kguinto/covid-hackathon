
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
      'Memorial Sloan Kettering Cancer Center ',
      '417 E 68th St
New York, NY 10065',
      'New York - Manhattan',
      'NY',
      'Accepting donations 24/7 in the lobby of the Zuckerman building.',
      'Yes',
      '40.7648883',
      '-73.9567338'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Sloan Kettering Cancer Center '
        AND o.latitude = '40.7648883'
        AND o.longitude = '-73.9567338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Sloan Kettering Cancer Center '
        AND o.latitude = '40.7648883'
        AND o.longitude = '-73.9567338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Sloan Kettering Cancer Center '
        AND o.latitude = '40.7648883'
        AND o.longitude = '-73.9567338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Sloan Kettering Cancer Center '
        AND o.latitude = '40.7648883'
        AND o.longitude = '-73.9567338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Sloan Kettering Cancer Center '
        AND o.latitude = '40.7648883'
        AND o.longitude = '-73.9567338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Sloan Kettering Cancer Center '
        AND o.latitude = '40.7648883'
        AND o.longitude = '-73.9567338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Sloan Kettering Cancer Center '
        AND o.latitude = '40.7648883'
        AND o.longitude = '-73.9567338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Sloan Kettering Cancer Center '
        AND o.latitude = '40.7648883'
        AND o.longitude = '-73.9567338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Sloan Kettering Cancer Center '
        AND o.latitude = '40.7648883'
        AND o.longitude = '-73.9567338'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Sloan Kettering Cancer Center '
        AND o.latitude = '40.7648883'
        AND o.longitude = '-73.9567338'));

COMMIT;
