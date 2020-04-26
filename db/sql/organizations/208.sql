
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
      'Central Coast Medical Group ',
      '1101 East Ocean Ave B
Lompoc, CA 93436',
      'Lompoc',
      'CA',
      'Front door',
      'Yes',
      '34.6391336',
      '-120.4448382'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central Coast Medical Group '
        AND o.latitude = '34.6391336'
        AND o.longitude = '-120.4448382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central Coast Medical Group '
        AND o.latitude = '34.6391336'
        AND o.longitude = '-120.4448382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central Coast Medical Group '
        AND o.latitude = '34.6391336'
        AND o.longitude = '-120.4448382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central Coast Medical Group '
        AND o.latitude = '34.6391336'
        AND o.longitude = '-120.4448382'));

COMMIT;
