
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
      'Urgent Care for Children',
      '500 Cahaba Park Circle Suite 100
Birmingham, AL 35242',
      'Birmingham',
      'AL',
      'Mail to: 500 Cahaba Park Circle, Birmingham, AL 35242',
      'Unsure',
      '33.4307422',
      '-86.7064615'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Children'
        AND o.latitude = '33.4307422'
        AND o.longitude = '-86.7064615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Children'
        AND o.latitude = '33.4307422'
        AND o.longitude = '-86.7064615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Children'
        AND o.latitude = '33.4307422'
        AND o.longitude = '-86.7064615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Children'
        AND o.latitude = '33.4307422'
        AND o.longitude = '-86.7064615'));

COMMIT;
