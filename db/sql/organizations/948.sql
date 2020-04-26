
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
      'American Health Communities',
      '201 Jordan Rd #200
Franklin, TN 37067',
      'Franklin',
      'TN',
      'This is our corporate office; please put Attn: Brad Brandt',
      'Yes',
      '35.9177445',
      '-86.8437984'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Health Communities'
        AND o.latitude = '35.9177445'
        AND o.longitude = '-86.8437984'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Health Communities'
        AND o.latitude = '35.9177445'
        AND o.longitude = '-86.8437984'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Health Communities'
        AND o.latitude = '35.9177445'
        AND o.longitude = '-86.8437984'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Health Communities'
        AND o.latitude = '35.9177445'
        AND o.longitude = '-86.8437984'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Health Communities'
        AND o.latitude = '35.9177445'
        AND o.longitude = '-86.8437984'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Health Communities'
        AND o.latitude = '35.9177445'
        AND o.longitude = '-86.8437984'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Health Communities'
        AND o.latitude = '35.9177445'
        AND o.longitude = '-86.8437984'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Health Communities'
        AND o.latitude = '35.9177445'
        AND o.longitude = '-86.8437984'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Health Communities'
        AND o.latitude = '35.9177445'
        AND o.longitude = '-86.8437984'));

COMMIT;
