
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
      'Weston Volunteer EMS',
      '52 Norfield Rd
Weston, CT 06883',
      'Weston',
      'CT',
      'Mail:  Attention: Supplies',
      'Yes',
      '41.2021727',
      '-73.3797187'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Weston Volunteer EMS'
        AND o.latitude = '41.2021727'
        AND o.longitude = '-73.3797187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Weston Volunteer EMS'
        AND o.latitude = '41.2021727'
        AND o.longitude = '-73.3797187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Weston Volunteer EMS'
        AND o.latitude = '41.2021727'
        AND o.longitude = '-73.3797187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Weston Volunteer EMS'
        AND o.latitude = '41.2021727'
        AND o.longitude = '-73.3797187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Weston Volunteer EMS'
        AND o.latitude = '41.2021727'
        AND o.longitude = '-73.3797187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Weston Volunteer EMS'
        AND o.latitude = '41.2021727'
        AND o.longitude = '-73.3797187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Weston Volunteer EMS'
        AND o.latitude = '41.2021727'
        AND o.longitude = '-73.3797187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Weston Volunteer EMS'
        AND o.latitude = '41.2021727'
        AND o.longitude = '-73.3797187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Weston Volunteer EMS'
        AND o.latitude = '41.2021727'
        AND o.longitude = '-73.3797187'));

COMMIT;