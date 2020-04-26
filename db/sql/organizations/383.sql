
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
      'Integrative Emergency Healthcare',
      '4835 Lyndon B Johnson Fwy #900
Dallas, TX 75244',
      'Dallas',
      'TX',
      'Mailing Address ',
      'Yes',
      '32.9281233',
      '-96.8246742'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Integrative Emergency Healthcare'
        AND o.latitude = '32.9281233'
        AND o.longitude = '-96.8246742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Integrative Emergency Healthcare'
        AND o.latitude = '32.9281233'
        AND o.longitude = '-96.8246742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Integrative Emergency Healthcare'
        AND o.latitude = '32.9281233'
        AND o.longitude = '-96.8246742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Integrative Emergency Healthcare'
        AND o.latitude = '32.9281233'
        AND o.longitude = '-96.8246742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Integrative Emergency Healthcare'
        AND o.latitude = '32.9281233'
        AND o.longitude = '-96.8246742'));

COMMIT;
