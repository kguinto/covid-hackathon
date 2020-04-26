
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
      'Temecula Valley Hospital',
      '31700 Temecula Parkway
Temecula, CA 92592',
      'Temecula',
      'CA',
      'Emergency Room drop off Dawnelle Anderson',
      'Yes',
      '33.4811362',
      '-117.1060989'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temecula Valley Hospital'
        AND o.latitude = '33.4811362'
        AND o.longitude = '-117.1060989'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temecula Valley Hospital'
        AND o.latitude = '33.4811362'
        AND o.longitude = '-117.1060989'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temecula Valley Hospital'
        AND o.latitude = '33.4811362'
        AND o.longitude = '-117.1060989'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temecula Valley Hospital'
        AND o.latitude = '33.4811362'
        AND o.longitude = '-117.1060989'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Temecula Valley Hospital'
        AND o.latitude = '33.4811362'
        AND o.longitude = '-117.1060989'));

COMMIT;
