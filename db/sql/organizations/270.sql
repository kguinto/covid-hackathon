
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
      'TGH Urgent Care powered by Fast Track',
      '3301 W Gandy Blvd
Tampa, FL 33611',
      'Tampa',
      'FL',
      'Back door',
      'Yes',
      '27.8940266',
      '-82.4986671'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'TGH Urgent Care powered by Fast Track'
        AND o.latitude = '27.8940266'
        AND o.longitude = '-82.4986671'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'TGH Urgent Care powered by Fast Track'
        AND o.latitude = '27.8940266'
        AND o.longitude = '-82.4986671'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'TGH Urgent Care powered by Fast Track'
        AND o.latitude = '27.8940266'
        AND o.longitude = '-82.4986671'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'TGH Urgent Care powered by Fast Track'
        AND o.latitude = '27.8940266'
        AND o.longitude = '-82.4986671'));

COMMIT;
