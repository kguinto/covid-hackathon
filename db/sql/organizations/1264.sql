
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
      'Santa Rosa Community Health',
      '711 Stony Point Rd #17
Santa Rosa, CA 95407',
      'Santa Rosa',
      'CA',
      'Best to drop off outside front door around 8am when clinic opens (but anytime between 8a-5p is okay)',
      'Yes',
      '38.4290368',
      '-122.7420462'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Rosa Community Health'
        AND o.latitude = '38.4290368'
        AND o.longitude = '-122.7420462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Rosa Community Health'
        AND o.latitude = '38.4290368'
        AND o.longitude = '-122.7420462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Rosa Community Health'
        AND o.latitude = '38.4290368'
        AND o.longitude = '-122.7420462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Rosa Community Health'
        AND o.latitude = '38.4290368'
        AND o.longitude = '-122.7420462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('gift cards for patient families who no longer have income',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Rosa Community Health'
        AND o.latitude = '38.4290368'
        AND o.longitude = '-122.7420462'));

COMMIT;
