
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
      'Providence Montana',
      '500 W. Broadway
Missoula, MT 59802',
      'Missoula',
      'MT',
      'Contact Anita at anita.nash@providence.org or 406-329-4147',
      'No',
      '46.8755594',
      '-114.0000297'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Montana'
        AND o.latitude = '46.8755594'
        AND o.longitude = '-114.0000297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Montana'
        AND o.latitude = '46.8755594'
        AND o.longitude = '-114.0000297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Montana'
        AND o.latitude = '46.8755594'
        AND o.longitude = '-114.0000297'));

COMMIT;
