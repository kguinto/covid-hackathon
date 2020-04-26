
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
      'Long Island Community Hospital ',
      '101 Hospital Rd
Patchogue, NY 11772',
      'East Patchogue ',
      'NY',
      'Donation to mail lobby ',
      'No',
      '40.7799905',
      '-72.9772437'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community Hospital '
        AND o.latitude = '40.7799905'
        AND o.longitude = '-72.9772437'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community Hospital '
        AND o.latitude = '40.7799905'
        AND o.longitude = '-72.9772437'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community Hospital '
        AND o.latitude = '40.7799905'
        AND o.longitude = '-72.9772437'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community Hospital '
        AND o.latitude = '40.7799905'
        AND o.longitude = '-72.9772437'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community Hospital '
        AND o.latitude = '40.7799905'
        AND o.longitude = '-72.9772437'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community Hospital '
        AND o.latitude = '40.7799905'
        AND o.longitude = '-72.9772437'));

COMMIT;
